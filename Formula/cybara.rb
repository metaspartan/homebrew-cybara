class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1275"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1275/cybara-v1.0.1275-darwin-arm64-cli"; sha256 "9b959beb5535dfc021dd82b2717fa8ed7491573ef67b8432dc0efd0bdf6ddf8a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1275/cybara-v1.0.1275-darwin-x64-cli"; sha256 "561b095a3b5a983fd89b52da24aaa4a6e60c08cd42f70726e2fc943ac77286a5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1275/cybara-v1.0.1275-linux-arm64-cli"; sha256 "95659894adfe909b50195a45d1573b3971de25870ca61cd6f1513b1d262ad089" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1275/cybara-v1.0.1275-linux-x64-cli"; sha256 "13edd7a69cfec30e67c0a9658d376fc6b04cd27a5f3c70a69d3810584ed5dceb" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
