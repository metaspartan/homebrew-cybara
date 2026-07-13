cask "cybara" do
  version "1.0.1436"
  on_arm { sha256 "f2486a488b9f999766c8c6852143b7fd50e68fdf6dde68ada6509619d0365ff9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1436/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5d9c9e8b11d68970c4725fcaac850bfb34d4607e8c6bb5f6d41a3e48e4d53553"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1436/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
