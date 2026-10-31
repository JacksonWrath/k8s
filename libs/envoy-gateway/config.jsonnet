local config = import 'jsonnet/config.jsonnet';
local versions = [
  'v1.8.6',
  'v1.9.3',
];

config.new(
  name='envoy-gateway',
  specs=[
    {
      output: version,
      prefix: '^io\\.envoyproxy\\.gateway\\..*',
      crds: ['https://github.com/envoyproxy/gateway/releases/download/%s/install.yaml' % version],
      localName: 'envoy-gateway',
    }
    for version in versions
  ]
)
