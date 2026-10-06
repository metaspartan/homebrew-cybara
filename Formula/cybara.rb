class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2503"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2503/cybara-v1.0.2503-darwin-arm64-cli"; sha256 "91b6ec5ada17b6f9c59a488b3952e993b16911c8c0d24b17349d2fbe3f308168" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2503/cybara-v1.0.2503-darwin-x64-cli"; sha256 "b7be5df5b9732bc38fba42aea8efde025bd84bb2451a06e71c77ce0c37a20ee3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2503/cybara-v1.0.2503-linux-arm64-cli"; sha256 "757ab1e0a52f72e42569125a3329ee8ff57c1cc38ab158fe1b26fcfef36165b4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2503/cybara-v1.0.2503-linux-x64-cli"; sha256 "2c819792d3138fd61493e6ddd5a9262eec75f8078f092306e45bac7f9586c3e1" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
