## Usage

> [!CAUTION]
> This installation method has been deprecated since November 2024 and will be removed in November 2025, refer to the README of each chart for the new usage method.

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  `helm repo add <alias> https://helm-charts.adminafk.fr`

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo <alias>` to see the charts.

To install the <chart-name> chart:

    helm install <chart-name> <alias>/<chart-name>

To uninstall the chart:

    helm delete <chart-name>
