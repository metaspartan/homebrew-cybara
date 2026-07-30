class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2012"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2012/cybara-v1.0.2012-darwin-arm64-cli"; sha256 "b26f27d554a9eef1f3f9f45a7dba8da9027e00a93a2859b4ba34d11704ee2c3e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2012/cybara-v1.0.2012-darwin-x64-cli"; sha256 "25880b157b66ee9f5ed639396d0792588e86fcfd50626824c85293a5ccd9581a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2012/cybara-v1.0.2012-linux-arm64-cli"; sha256 "bf87401ebfa006d9ce05fff239f5c7145e2624bb5a99e262a7999a25245f5ea7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2012/cybara-v1.0.2012-linux-x64-cli"; sha256 "fff884fa764ff8000492994595d1b691aa5903823515bcd1d760366746b8139e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
