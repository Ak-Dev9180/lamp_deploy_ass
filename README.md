# LAMP Stack Deployment with Ansible

This repository contains scripts and configuration files to automate the deployment of a LAMP (Linux, Apache, MySQL, PHP) stack using Ansible.

## Table of Contents
1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Usage](#usage)
4. [Documentation](#documentation)
5. [Contributing](#contributing)
6. [License](#license)

## Overview

The provided scripts automate the deployment of a LAMP stack on a target server using Ansible. The deployment process includes:
- Installing Apache web server
- Installing MySQL server
- Installing PHP and necessary extensions
- Cloning a PHP application from GitHub
- Configuring Apache virtual hosts
- Configuring MySQL databases and users
- Setting up cron jobs

## Prerequisites

Before running the deployment scripts, ensure that you have the following prerequisites:
- Access to a target server with Ubuntu installed (referred to as the Slave node)
- Ansible installed on your local machine (referred to as the Master node)
- Access to a GitHub repository containing the PHP application to be deployed

## Usage

To deploy the LAMP stack using Ansible, follow these steps:

1. Clone this repository to your local machine: https://github.com/laravel/laravel

2. Navigate to the repository directory: cd home/vagrant/laravel

3. Update the Ansible inventory file (`inventory.ini`) with the IP address of your Slave node.

4. Run the Ansible playbook to execute the deployment script on the Slave node: ansible-playbook deploy.yml -i inventory.ini


5. Once the deployment is complete, verify the accessibility of the PHP application through the Slave node's IP address or domain name.

## Documentation

For detailed documentation on the deployment process and configuration options, refer to the following files:
- [deploy_lamp.sh](deploy_lamp.sh): Bash script to deploy the LAMP stack on the Slave node.
- [deploy.yml](deploy.yml): Ansible playbook to execute the deployment script on the Slave node.
- [inventory.ini](inventory.ini): Ansible inventory file containing the IP address of the Slave node.
- [README.md](README.md) (this file): Overview and usage instructions.

## Contributing

Contributions to improve this project are welcome! To contribute, follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make your changes and commit them (`git commit -am 'Add new feature'`).
4. Push your changes to the branch (`git push origin feature/new-feature`).
5. Create a pull request.

<img width="941" alt="image" src="https://github.com/Ak-Dev9180/lamp_deploy_ass/assets/127277430/79756aaa-69b5-4cc3-861b-273967d1edb7">
