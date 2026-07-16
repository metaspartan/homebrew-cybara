class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1711"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1711/cybara-v1.0.1711-darwin-arm64-cli"; sha256 "487f8951285b9116f65e72feff7f031fb203858e48176fa065da0398149c01be" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1711/cybara-v1.0.1711-darwin-x64-cli"; sha256 "ab9183c7aee7c490314b9fb334c214fbe7f11835a88511bd91ea2f69ccad44be" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1711/cybara-v1.0.1711-linux-arm64-cli"; sha256 "1035ddf1f20e847be96bdadff4d658e09da93f7665d0e109ef97c6536bc9df26" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1711/cybara-v1.0.1711-linux-x64-cli"; sha256 "430107527ea32895b3098c46ceba50acf5ec79b40d54ddb2b3ea30560c4b30f9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
