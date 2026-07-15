cask "cybara" do
  version "1.0.1621"
  on_arm { sha256 "b42eff3b5fdaf21745a58fd6d7981b14f1880955402e8db94e432cc808f9a508"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1621/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a82a10b30a0aa2e71dac5e2915585653c5538e1148f3f56197a15460a11b6c87"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1621/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
