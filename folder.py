import os
import base64
import requests

# Replace these variables with your own values
api_endpoint = "https://api.github.com"
github_token = "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"
repo_owner = 'sdaga10'
repo_name = 'IACHybrid'

# Set the headers with the authentication token
headers = {
    "Authorization": f"token {github_token}",
    "Accept": "application/vnd.github.v3+json"
}

# Set the folder path
folder_path = "."

# Get the repository
url = f"{api_endpoint}/repos/{repo_owner}/{repo_name}"
response = requests.get(url, headers=headers, verify=False)

# Get the SHA of the latest commit on the main branch
sha_latest_commit = response.json()["default_branch"]

# Loop through each file in the folder and upload them
for file_name in os.listdir(folder_path):
    file_path = os.path.join(folder_path, file_name)

    # Read the file content
    with open(file_path, 'r') as file:
        file_content = file.read()

    # Encode the file content as base64
    file_content_bytes = file_content.encode("utf-8")
    encoded_content = base64.b64encode(file_content_bytes)

    # Set the file path in the API URL
    file_api_path = file_name.replace("\\", "/")
    url = f"{api_endpoint}/repos/{repo_owner}/{repo_name}/contents/{file_api_path}"

    # Set the request body
    data = {
        "message": f"Add {file_name}",
        "content": encoded_content.decode(),
        "sha": sha_latest_commit,
    }

    # Make the API call to upload the file
    response = requests.put(url, headers=headers, json=data, verify=False)

    # Print the API response
    print(response.json())
