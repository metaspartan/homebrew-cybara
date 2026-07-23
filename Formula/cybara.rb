class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1904"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1904/cybara-v1.0.1904-darwin-arm64-cli"; sha256 "1567e26aef1ac1ec5c9e6be3a4ee8f6530f3e546c75856d26b9fc3ad7ee7192e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1904/cybara-v1.0.1904-darwin-x64-cli"; sha256 "aaa6ad1a30dfca16fee9f94d1170033abcf8548695ce10f85bb0ae89e5be1f86" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1904/cybara-v1.0.1904-linux-arm64-cli"; sha256 "f9a76d87eb5a746af472613a0e340d95ff8db5b4f24724edf2a5042117537bd3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1904/cybara-v1.0.1904-linux-x64-cli"; sha256 "3eb9534c6e67f7201ef13d08fcf2ce7e5204f6abe88ed033d637473efd5829d7" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
