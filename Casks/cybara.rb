cask "cybara" do
  version "1.0.2071"
  on_arm { sha256 "2e60ddcc8996752045f117eb1a9cbab06b89c082ad58e1770c403452ed1c9243"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2071/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0eb42c177afd0ad6595df48de87d7557877d4aa35f098c42d902f770f15609a4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2071/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
