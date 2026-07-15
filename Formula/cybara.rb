class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1594"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1594/cybara-v1.0.1594-darwin-arm64-cli"; sha256 "f25b9459e8d09d92a9c5e4a2a80557d703923edff3e685da40f176a618296634" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1594/cybara-v1.0.1594-darwin-x64-cli"; sha256 "d60e8f745b7a194aa3c040a9d0503898482ae704c8df672bf9d4d3ef7d9265de" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1594/cybara-v1.0.1594-linux-arm64-cli"; sha256 "b56e370e4012c54c04e7fadba4a5116bb7928000df9bad1f4a87e1c07ebe4737" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1594/cybara-v1.0.1594-linux-x64-cli"; sha256 "3d9e577b44b52ffcc7f1426866ddd11a52250bdbb1f52d5c833d2119e904db8b" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
