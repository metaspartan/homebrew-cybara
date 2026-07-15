cask "cybara" do
  version "1.0.1594"
  on_arm { sha256 "a84745a48ff13ed5701397d35b1d51bc64317c00f77b5a26ed2e0350a6adad25"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1594/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e8bb695d02e20d2b7bfb28724eac71298df87af802f2e94b58fa4470eeb6182d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1594/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
