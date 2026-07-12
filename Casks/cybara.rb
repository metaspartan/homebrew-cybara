cask "cybara" do
  version "1.0.1370"
  on_arm { sha256 "0c2d73c4bc0a4968d5228a3c6859fce2370bbad2d6ca276c4bf2d19ac5031e67"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1370/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8adee9c6427ec25cf52951f76fa7075421360c22bc3309f6eba95a0c9d7e949f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1370/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
