cask "cybara" do
  version "1.0.2524"
  on_arm { sha256 "4fa5c1fcd031494a7df322e2ad98e15e1dcc7782b773463f5a44d634b32e56ff"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2524/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e7407741db9995f0859005c8402fde6ad64ca4766ba62b654359b9c9dabb1bb1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2524/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
