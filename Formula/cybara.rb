class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1294"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1294/cybara-v1.0.1294-darwin-arm64-cli"; sha256 "2efe18d9e3f3be9572571609df857d6a13c265fcb937c36b326e536559e18425" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1294/cybara-v1.0.1294-darwin-x64-cli"; sha256 "22c3b0cf00d68e8a97f45c3754f62e4cd8ecb5d315a5093a7b6e87e34f20b167" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1294/cybara-v1.0.1294-linux-arm64-cli"; sha256 "0678709a33a289cac7a8e65c395b1c1ff5bc62669706408603d4b24ab29e7bb2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1294/cybara-v1.0.1294-linux-x64-cli"; sha256 "e07a31456f2d7503a1c92b7572ade92e7a768c41f5f2fa01ba6cd5a21abedbb2" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
