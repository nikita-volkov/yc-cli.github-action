# Summary

GitHub Action for executing any Yandex Cloud CLI command.

Automates installation and configuration of CLI and runs quickly.

# Inputs

- `key` - YC service account key
- `args` - Arguments to the `yc` command

# Outputs

- `output` - Command output

# Example

```yaml
      - name: Make the container public
        uses: nikita-volkov/yc-cli.github-action@v1.0.0
        with:
          key: ${{ secrets.SA_DEPLOYER_PRIVATE_KEY }}
          args: serverless container --id ${{ steps.deploy.outputs.id }} allow-unauthenticated-invoke
```
