import re

# Define the input and output file paths
input_file = "input.txt"
output_file = "output.txt"

# Define a regular expression to match URLs
url_regex = r"(?:https?://|www\.)\S+"

# Open the input and output files
with open(input_file, "r") as f_in, open(output_file, "w") as f_out:
    # Read the contents of the input file
    content = f_in.read()

    # Find all matches of the URL regex in the content
    urls = re.findall(url_regex, content)

    # Write the URLs to the output file, one per line
    for url in urls:
        f_out.write(url + "\n")
