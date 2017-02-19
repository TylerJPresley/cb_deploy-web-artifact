# deploy-web-artifact Cookbook

Deploys deploy-web-artifact.sh script

This script assumes you've got the same setup as me. Fork it and make it fit your needs.<br>
1. Jenkins deploys the artifact to /tmp<br>
2. Artifact is a `*.tar.gz`<br>
3. Your site's root is something like /var/www/mysite.com/current

EX: sh /var/www/deploy-web-artifact.sh --artifact mysite.com-2017.1.1.tar.gz --build-version 2017.1.1 --keep 10 --path /var/www/mysite.com

## Attributes

All of the attributes are required. Chef-client will fail if one is missing.

`node['deploy-web-artifact']['script-path']` - path where the script will be placed. [String]<br>
`node['deploy-web-artifact']['group']` - file group name. [Integer, String]<br>
`node['deploy-web-artifact']['owner']` - file owner. [Integer, String]<br>
`node['deploy-web-artifact']['mode']` - octal mode. [Integer, String]

## Usage

### deploy-web-artifact::default

Just include `deploy-web-artifact` in your node's `run_list`: `recipe[deploy-web-artifact::default]`

In your node/role file:
```
json
{
  "deploy-web-artifact": {
    "script-path": "/var/www",
    "owner": "nginx",
    "group": "nginx",
    "mode": "644"
  }
}
```

## Contributing

1. Fork the repository on Github<br>
2. Create a named feature branch (like `add_component_x`)<br>
3. Write your change<br>
4. Write tests for your change (if applicable)<br>
5. Run the tests, ensuring they all pass<br>
6. Submit a Pull Request using Github

## License and Authors

MIT License

Authors: Tyler J Presley (tjpresley@gmail.com)
