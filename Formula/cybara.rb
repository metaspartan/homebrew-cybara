class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1231"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1231/cybara-v1.0.1231-darwin-arm64-cli"; sha256 "61ef5231cda13919930f35e308cb9201cb49f67ab25d48d29c9572d83e22284c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1231/cybara-v1.0.1231-darwin-x64-cli"; sha256 "4977b65e1acc57e4e14bb7ec876aa69ea2fc2c1fc3233137c3fc2477a406a3d6" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1231/cybara-v1.0.1231-linux-arm64-cli"; sha256 "1bc28b138f816ef3ddb83d27e881b254bfb684610607f8ed71d9809dceeabf7f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1231/cybara-v1.0.1231-linux-x64-cli"; sha256 "3d7700ba83077fec45293ab19b5f21e0e140284dd9428c8c31c5f2776f30a0c8" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
