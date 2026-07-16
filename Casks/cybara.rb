cask "cybara" do
  version "1.0.1719"
  on_arm { sha256 "c0fc6207bb49132408683cf900cc36432dc0cae8c0464b8f89dba415eb3f84ae"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1719/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "35162b72c7942676fadf11dce08e1e7ac8e400c4d68965500f00238a08a97db5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1719/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
