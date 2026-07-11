class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1233"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1233/cybara-v1.0.1233-darwin-arm64-cli"; sha256 "049b9b70eb10720ae99f5ebcd82fade423f6efa484c9515a1fb84d9746f96642" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1233/cybara-v1.0.1233-darwin-x64-cli"; sha256 "0d9cea23be5f6918a151d67527280c0bd175f1ffb75e5e4b8d867c988ddfc5c4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1233/cybara-v1.0.1233-linux-arm64-cli"; sha256 "e6cabba25ecca742a84b4d93b84985d12bc787eb4c892b6cfe7c62c53402f2a9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1233/cybara-v1.0.1233-linux-x64-cli"; sha256 "468bfb4c07a538c81e7e54e0c1457cb51f726c3233cf094853e5caf1e73ba5b3" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
