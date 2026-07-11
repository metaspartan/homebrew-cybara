class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1289"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1289/cybara-v1.0.1289-darwin-arm64-cli"; sha256 "4034e46412354e197d2d9d73761f7f63520405d062d25906a513157930427614" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1289/cybara-v1.0.1289-darwin-x64-cli"; sha256 "6e4b66c83e4d6455f6fa653631f86cda0a0a7446efb8de4aa4fab24b81c2aa88" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1289/cybara-v1.0.1289-linux-arm64-cli"; sha256 "0a248959fa1363c9d0d118d23fb746c76a36cd36cb7a50a4e6533b4b3cb65524" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1289/cybara-v1.0.1289-linux-x64-cli"; sha256 "969e49f2cbcbd8b96ec54992979c884f4628c3ebcbe7ce6926247e2d80c7d0a9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
