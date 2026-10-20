cask "cybara" do
  version "1.0.2533"
  on_arm { sha256 "9cab4417287aa5f784a422af6fdd4b5e4a864ddc09b09df996fdf442ced75f4d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2533/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2c61d9b85784f0ca35df229de7133165dcc7cadb473848a59d272c606c5afccd"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2533/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
