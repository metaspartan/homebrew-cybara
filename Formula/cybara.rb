class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2258"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2258/cybara-v1.0.2258-darwin-arm64-cli"; sha256 "cdeac37094c21742aa991cc8a156758a4b154bf5bed0d92ffa098e6e3b04c2d9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2258/cybara-v1.0.2258-darwin-x64-cli"; sha256 "7a0dc552405183ef89b9e6d0b00591bf9453263a918592be4005d713e5814915" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2258/cybara-v1.0.2258-linux-arm64-cli"; sha256 "98ddb9c99d43148b754529df8f474473c9ef1883e4ba31b7e026da7234f4a0a9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2258/cybara-v1.0.2258-linux-x64-cli"; sha256 "a03d980e4aabb3bb7e8eff94efead55af6dd600665d5042e071263cb72315937" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
