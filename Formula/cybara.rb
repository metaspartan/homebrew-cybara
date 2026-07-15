class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1588"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1588/cybara-v1.0.1588-darwin-arm64-cli"; sha256 "263f3a2f55d27aa7222a9a1375dbb903037ed7017951d0c8b4f6f31177c25e01" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1588/cybara-v1.0.1588-darwin-x64-cli"; sha256 "a410b8b20dba3ebc26cc76f288d6238b6f4168e10057557fae7004997515b2f6" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1588/cybara-v1.0.1588-linux-arm64-cli"; sha256 "b2da3b6eb52afd4251bb8563ca93b8e621dc3bbfb7bfc9cec8d2cf678c207ff7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1588/cybara-v1.0.1588-linux-x64-cli"; sha256 "3551db32e20e5d2465eea181034e702248fec0d32d4d37723ca2299d5372b3a9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
