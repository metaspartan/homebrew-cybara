class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1402"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1402/cybara-v1.0.1402-darwin-arm64-cli"; sha256 "5e2ce0fe8002e756afcffba640f74ca03e4add471fbb3c44c25006d5aaf92dfc" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1402/cybara-v1.0.1402-darwin-x64-cli"; sha256 "487bfc836f6edd2b5dd99038f1bcf2fc8df41db42bd6aa88257df16279591ada" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1402/cybara-v1.0.1402-linux-arm64-cli"; sha256 "6fe7c686876ae1911c17a13bf7975ee0894c3604e4b4adfed9e0d07ebbbc9d49" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1402/cybara-v1.0.1402-linux-x64-cli"; sha256 "3cd490aee5f88f19bc750919d67efd269c0d2dfab748671bc297dada06f96085" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
