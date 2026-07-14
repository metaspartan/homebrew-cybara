class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1506"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1506/cybara-v1.0.1506-darwin-arm64-cli"; sha256 "16f6f98f752a0a3a3163587e1c93c814b99a8917a212c6946992bbaeb846c1b8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1506/cybara-v1.0.1506-darwin-x64-cli"; sha256 "c573dfe71a93707c9527576ed6e7f22fcac2da60de3ee346d1ed8760b1b4964e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1506/cybara-v1.0.1506-linux-arm64-cli"; sha256 "8a257a2c3b5889fcc06f3a0972c54e5c699ecd4860e230deea80f8e2fc6a5e1b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1506/cybara-v1.0.1506-linux-x64-cli"; sha256 "b1a0680fd8e54eb3f3e5046013f53b55e02722b7965df4cd83e5645f826d45b6" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
