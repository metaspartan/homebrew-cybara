cask "cybara" do
  version "1.0.1640"
  on_arm { sha256 "f42e92721b8bbbe8800c8118a75718a1bc81474cef7a193cb46831f937435669"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1640/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "699740bb1ba1d733722cddadf7a3a57fc3d3d23079b8cfbf35f3471db3d2567c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1640/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
