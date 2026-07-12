class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1398"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1398/cybara-v1.0.1398-darwin-arm64-cli"; sha256 "a3bd04b0a849fa58f80d02032b25ead094e809fa8c483f60b85cdf1bea37f764" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1398/cybara-v1.0.1398-darwin-x64-cli"; sha256 "b1d45e66bbc2aea58400cbe0c673de9356ec62eb018c5c67396b614c525591de" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1398/cybara-v1.0.1398-linux-arm64-cli"; sha256 "4ea6276a322bf3e7acd33437ea4cb97005985bcb35c87442ac833cee67ef3169" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1398/cybara-v1.0.1398-linux-x64-cli"; sha256 "0fc9596f53d484bea6d3ec9a4e5397c07a4203352466d3788b638f4e6c115503" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
