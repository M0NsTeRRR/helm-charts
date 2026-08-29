{
  pkgs,
  ...
}:
{
  packages = [
    pkgs.kubernetes-helm
    pkgs.helm-docs
  ];
}
