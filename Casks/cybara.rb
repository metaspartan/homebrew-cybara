cask "cybara" do
  version "1.0.1220"
  on_arm { sha256 "05bc79ca03586bee08fca11e2950cf62ab8a033470deef8dda91a689127e473a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1220/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "55666deaccd628b11154bfc1ba57ac7018b22275ba44918efcf121b0f746f81e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1220/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
