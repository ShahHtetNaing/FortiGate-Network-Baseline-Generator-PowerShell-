# FortiGate-Network-Baseline-Generator-PowerShell-
I recently built a PowerShell automation script that creates a network baseline configuration for FortiGate firewalls. The tool automatically generates a clean, consistent starting configuration using just the location acronym and the first two octets of the IP address making it faster and easier to deploy FortiGate firewalls across multiple sites.
💡 Highlights:
Streamlines baseline configuration creation
Promotes network standardization and scalability
Designed with real-world IT operations in mind
This project reflects my ongoing passion for automating network tasks and building tools that make IT infrastructure more efficient.

Open the code in Notepad++ or another editor, and change the two file paths to work.
$TemplatePath = 'C:\Users\snaingsu\Documents\Network\Baseline\Baseline_FortiGate_Template.conf'
$OutputFolder = 'C:\Users\snaingsu\Documents\Network\New config'

