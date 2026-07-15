cask "cybara" do
  version "1.0.1580"
  on_arm { sha256 "b52fed46fa4c3674e648564a9baa03afe2ffb89ba236a894e8a7ae84c52e9da4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1580/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a76446d8421f2f5f78a75e819af290f4c71c15874469987ed20d11d147a6b6a9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1580/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
