# crl-expiry-ansible

A simple ansible playbook to check the expiry dates on all VPN CRL certificates, on all environments.

## Prerequisites
- ansible
- dg-consent-dev-scripts

## Usage

```bash
cd crl-expiry-ansible
chmod +x run.sh
./run.sh
```

This bash script will use the `dgc` command from the `dg-consent-dev-scripts` tool to connect to each VPN.

The script will then use the ansble playbook command `ansible-playbook -i <host>, playbook.yml` to check the expiry date of the CRL certificate stored in `/mnt/secrets/pki/ca.crt`.

The playbook uses the `debug` command to store the output of the playbook into a file called `output.log` (this file is in the .gitignore).

## Notes
I have created a confluence document with all the expiry dates of all of the VPN CRL certificate in all environments [here](https://mylifedigital.atlassian.net/wiki/spaces/~6229d18cc4d0fe006957037e/pages/4603281409/CRL+Cert+Expiry+Dates+By+Environment). As of **24/06/2022**