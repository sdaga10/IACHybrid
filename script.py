from github import Github
import base64
import requests
import json
import yaml
import os
from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
# Set up the request data
url = "https://api.openai.com/v1/engines/text-davinci-003/completions"
headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer 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"
}
data = {
    "prompt": "Write a terraform code to provision a  azure to provision datafactory with dynamic input values ,define variables and check existing resource group  using datasources?",
    "temperature": 0.7,
    "max_tokens": 3318
}

# Send the POST request
response = requests.post(url, headers=headers, data=json.dumps(data), verify=False)
json_content = response.json()
print(json_content['choices'][0]['text'])


with open('output.tf', 'w') as f:

    # Redirect the output of the print statement to the file
    print(json_content['choices'][0]['text'], file=f)



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

# Set the path of the file to upload
file_path = "output.tf"

# Read the file content
with open(file_path, 'r') as file:
    file_content = file.read()
    file_name = os.path.basename(file_path)

# Encode the file content as base64
file_content_bytes = file_content.encode("utf-8")
encoded_content = base64.b64encode(file_content_bytes)

# Get the repository
url = f"{api_endpoint}/repos/{repo_owner}/{repo_name}"
response = requests.get(url, headers=headers, verify=False)

# Get the SHA of the latest commit on the main branch
sha_latest_commit = response.json()["default_branch"]

# Set the file name and path in the API URL
url = f"{api_endpoint}/repos/{repo_owner}/{repo_name}/contents/{file_path}"

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
