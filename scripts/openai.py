
import base64
import requests
import json
import yaml
import os

# Set up the request data
url = "https://api.openai.com/v1/engines/text-davinci-003/completions"

# Enter the name of the cloud
cloud_name = input("Enter the name of the cloud: ")
# Get the resource name from the user
resource_name = input("Enter the name of the resource: ")

headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer <YOUR_OPENAI_TOKEN>"
}

# Define the prompt string with the resource name placeholder
prompt = "Write a terraform code to provision {} {}  with dynamic input values  with all the mandatory parameters and define variables with bydefault values,types and dont add provider?".format(cloud_name, resource_name)
data = {
    "prompt": prompt,
    "temperature": 0.7,
    "max_tokens": 3318
}


# Send the POST request
response = requests.post(url, headers=headers, data=json.dumps(data), verify=False)
json_content = response.json()
print(json_content['choices'][0]['text'])

#Set the path of local directory where you want to create file
output_path = '/path/to/local/directory/{}'.format(resource_name)

# Create the directory if it doesn't exist
os.makedirs(os.path.dirname(output_path), exist_ok=True)

#with open('output.tf', 'w') as f:
with open(output_path, 'w') as f:

    # Redirect the output of the print statement to the file
    print(json_content['choices'][0]['text'], file=f)


# Set the authentication headers
headers = {
    "Authorization": f"token <YOUR_GITHUB_TOKEN>",
    'Accept': 'application/vnd.github.v3+json'
}


# Set the path to the local directory you want to upload
local_dir_path = "/path/to/local/directory"

# Get the list of files in the local directory
local_files = os.listdir(local_dir_path)

# Set the repository name and owner
repo_name = "<your-repo-name>"
repo_owner = "<your-repo-owner>"

# Get the current commit sha for the main branch
repo_url = f"https://api.github.com/repos/{repo_owner}/{repo_name}/branches/main"
response = requests.get(repo_url, headers=headers, verify=False)
commit_sha = response.json()["commit"]["sha"]

# Set the request body to create a folder
data = {
    "message": f"Create {resource_name}",
    "content": "",
    "path": f"{resource_name}/",
    "branch": "main",
    "sha": commit_sha
}

# Make the API request to create the new folder
create_folder_url = f"https://api.github.com/repos/{repo_owner}/{repo_name}/contents/{resource_name}/"
response = requests.put(create_folder_url, headers=headers, verify=False, json=data)

# Check the response status code
if response.status_code == 201:
    print(f"The folder '{resource_name}' was successfully created in the repository.")
else:
    print(f"An error occurred while creating the folder '{resource_name}'. Response:")
    print(response.json())

# Loop through each file and upload it to the GitHub directory
for filename in local_files:
    # Set the path for the new file in the GitHub directory
    github_file_path = f"{resource_name}/{filename}"
    
    # Read the contents of the local file
    with open(os.path.join(local_dir_path, filename), "rb") as f:
        file_content = f.read()
    
    # Encode the file content as base64
    encoded_content = base64.b64encode(file_content).decode()
    
    # Set the request body
    data = {
        "message": f"Add {filename}",
        "content": encoded_content,
        "path": github_file_path,
        "branch": "main"
    }
    
    # Make the API request to create the new file
    create_file_url = f"https://api.github.com/repos/{repo_owner}/{repo_name}/contents/{github_file_path}"
    response = requests.put(create_file_url, headers=headers, verify=False, json=data)
    
    # Check the response status code
    if response.status_code == 201:
        print(f"The file '{filename}' was successfully uploaded to the repository.")
    else:
        print(f"An error occurred while uploading the file '{filename}'. Response:")
        print(response.json())
