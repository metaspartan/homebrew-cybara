cask "cybara" do
  version "1.0.2370"
  on_arm { sha256 "4159dfa1059a935cb161b9258e407b432be947c8728daf875d877f95665c48d3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2370/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7577d8916210c40d3e5169a2e97cbb5366f46ba2014d7dbbbb36296fc85d09b9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2370/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
