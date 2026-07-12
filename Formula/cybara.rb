class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1374"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1374/cybara-v1.0.1374-darwin-arm64-cli"; sha256 "0f030c9575ec4b06bf4e8742f987e5893a0ecf181de3ed09075df4d883bcc892" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1374/cybara-v1.0.1374-darwin-x64-cli"; sha256 "b77c090bbc15c2996aef643e149584e58ce2ddb41ff8cf7279738f8aea737094" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1374/cybara-v1.0.1374-linux-arm64-cli"; sha256 "88c0eac3826b27a8665c20103c7e7ea0acf326e82cf0f201a095b65fe6f48440" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1374/cybara-v1.0.1374-linux-x64-cli"; sha256 "cff71c14f8f585aedc4315e728c0493930dc0aebf16f80f82bc7cc105d53a95a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
