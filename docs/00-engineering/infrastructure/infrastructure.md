# Infrastructure Best Practices

Bixal utilized infrastructure as code (IaC) for services that support it. IaC provides reproducibility and allows for ephemeral environments. Different technologies exists to accomplish this task from [Terraform](https://www.terraform.io/), [Ansible](https://www.ansible.com/)

To document all the best practices of each different technology you encounter is out of the scope of this document. The goal of this page is to cover the major security concerns and serve as an introduction how to build and maintain infrastructure.

## FedRAMP

## Network Architecture

Projects should always take network architecture into account when designing servers and infrastructure. All CSP's have the ability to create public, and private subnet's. By utilizing this architecture services can remain private and more protected, and services such as bastion hosts may be used to harden access to private services. For more information on this type of architecture you can review AWS's [reference documentation](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html). While this documentation is AWS specific, the concepts apply across CSP's.

## IAM and Role Based Access

All cloud service providers, which have a fedRAMP authorization have have strong identity and role based management. It is imperative that teams follow a policy of least privilege and never simply grant full access to a service. These controls, along with use of multi factor authentication are of the highest priority when dealing access to environments. Credentials should **NEVER** be shared all of the following services will allow for unique identifiers and credentials to be created for users and services.

## Amazon Web Services

### Managing Credentials

### Gov Cloud vs Public Regions

The primary differences between Gov Cloud and a General Public regions is staffing, and availability of services and FedRAMP authorizations. Gov Cloud has FedRAMP high along with some related DoD impact level certifications. It achieves this by staffing only US Citizens and a reduction in overall services where they cannot be compliant to the standard.

What this means as an architecture perspective is the following:

* Does our application need FedRAMP (or DoD impact level) high?
* Does our application utilize services not available in Gov Cloud?
* Does our application need to be served, or interconnected to global audience? (E.g - a USAID project which is us funded by USAID but may have a global audience).