class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2213"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2213/cybara-v1.0.2213-darwin-arm64-cli"; sha256 "3b8284fd8bb39e6cec623b5ab3f6c1b84ed535b14f0c6be055ecfffe7d185541" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2213/cybara-v1.0.2213-darwin-x64-cli"; sha256 "3cd0d2202e5f3d7fdd283a7242200133a8c35458dfc8b04f17e904aef5ec3b0b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2213/cybara-v1.0.2213-linux-arm64-cli"; sha256 "16376151241d75c10a174f46f16ce68f667f2c48bd6e536dcea277e0b85668ab" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2213/cybara-v1.0.2213-linux-x64-cli"; sha256 "fa439173d95c0f6ec23fa0fd9935ade364945a77b94dce071b3190b3c8946d2e" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
