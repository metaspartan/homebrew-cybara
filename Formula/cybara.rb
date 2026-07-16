class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1709"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1709/cybara-v1.0.1709-darwin-arm64-cli"; sha256 "ced14dbc59b8a6c7ad3cb8e9a1bde1902095031ffde2698b90f0dc7da414b639" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1709/cybara-v1.0.1709-darwin-x64-cli"; sha256 "4fd22759eb8e7ea301c02fefd5790a3e10f422b2b2e7d5bdc1dcdce1329f9820" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1709/cybara-v1.0.1709-linux-arm64-cli"; sha256 "2586e7d62d1f1bf5e7724d374c17c74fbbd74a11e0e0f6e3cb32ffddc783363f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1709/cybara-v1.0.1709-linux-x64-cli"; sha256 "052514f90c354074c0ffbab152237f8610fd475af47ef0e3fc1e24a87ea6ab4a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
