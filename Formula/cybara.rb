class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1349"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1349/cybara-v1.0.1349-darwin-arm64-cli"; sha256 "23a1d6f6cf092a345857a8ce41d3ae3024029f9f24fd62959a948927f387226e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1349/cybara-v1.0.1349-darwin-x64-cli"; sha256 "d76a58ab6ff3fce72fb9f63f90b311b6749475b3dc83f6e973a92ee9e5cbcef5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1349/cybara-v1.0.1349-linux-arm64-cli"; sha256 "db71444c0d6efea2f5e6686e864ef0927ba0d39d3070bb20252abc273b760dd4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1349/cybara-v1.0.1349-linux-x64-cli"; sha256 "b1568bbf8afc42c351698f5fb1dee98fb31034c4f6fa0896a92a660a191f1357" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
