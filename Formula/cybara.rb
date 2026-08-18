class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2121"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2121/cybara-v1.0.2121-darwin-arm64-cli"; sha256 "afa593ea52b0a25b3ef6c9f2022e21ff9b24f994f22395fe382d005edff757bb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2121/cybara-v1.0.2121-darwin-x64-cli"; sha256 "2a5bf92537dc79ea124985986398e8283880390ddb8b7e2a99a3fb46384bbfb2" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2121/cybara-v1.0.2121-linux-arm64-cli"; sha256 "fd41872db3e000914e26cadba0a039c0701b40ad009c2167ee341e4775f262eb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2121/cybara-v1.0.2121-linux-x64-cli"; sha256 "59aa6dff100e293f5b54c15dffa5d8c70780825093cf6df96fb1c48d9bc1d4ab" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
