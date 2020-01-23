# Engineering

@todo section intro

## Onboarding 

This section of the Bixal Techbook is designed to help both you and current Bixal team with the facilitation of the onboarding process. Described in the following sections is all the information you need to integrate into Bixal's tech workflow. 

## Requesting Access

This section will describe the standard process for requesting access during Onboarding.

There are four major tools you will need that are essential to the Bixal workflow:
- Github
- BitBucket
- Gitlab
- Jira

Each of the tools' role in the Bixal workflow along with their setup processes are outlined in their respective sections below.

## Generating SSH Keys

This section will describe how to generate SSH keys to be used in the Setup of Github, Gitlab, and BitBucket.

On a Mac:
- Open Terminal app
- Input command: ssh-keygen -t rsa -b 4096 -C "NameForKey"
- The terminal will begin generating a public/private ssh key pair
- The command will prompt you to enter a file for which to save the key into
- Unless the default directory has a conflict on your machine, you can hit enter to proceed using the deafult file
- The terminal will prompt you to enter a passphrase to secure the SSH key once it is generated
- You can access the generated SSH key pair by navigating to the file path output in the 


----
## Github
### Workflow Role
Github is a publicly avaliable, free source code hosting platform. Github is used by Bixal for all open source projects (except those which are better hosted on an open source community infrastructure), as well as internal, client or pro-bono projects that should be developed in public. Github helps our team maintain a reliable codebase and allows us to create branchs of the project to test additions without breaking functionality of the original implementation.

### Github Setup
To get started with Github, you must request/recieve an invitation to the Bixal Solutions Organization. 

Once the invitation is accepted you must verify that you have Two-factor authentication setup and turned on.
- Navigate to Settings
- Navigate to Security
- Verify that the box next to the header Two-factor authentication is green and says "Enabled"
- If Two-factor authentication is not enabled there are a few options available to enable it.
	- Authenticator App
	- Security Keys
	- SMS number
- Save your recovery codes in a safe place, not on your primary device for authentication, in case you are unable to access your primary device and still need to access your account.
- You also have the option of adding a fallback SMS number, which allows Github to send authentication codes to a secondary phone if the primary device is inaccessible.
- Recovery Tokens

The next step is to add an SSH Key to your account.


The Github block will have a link to requesting access and generating ssh keys. The Github block will describe when someone should use their personal github or when they should create a github account using their Bixal email.

----
## Setting Up Gitlab

The Gitlab block will have a link to requesting access and generating ssh keys. The Gitlab block will run through the creation of a Gitlab account.

----
## Setting Up BitBucket

The BitBucket block will have a link to requesting access and generating ssh keys. The BitBucket block will include account signup/login for the first time and requesting access to other projects as necessary.

----
## Setting Up Jira

The Jira block will have a link to requesting access. The Jira block will include information on requesting access to various projects as necessary.


## Biweekly Engineering Call

Every two weeks we hold a one hour meeting for the whole engineering team.

An agenda is laid out each week along with time to bring up technology related items.
