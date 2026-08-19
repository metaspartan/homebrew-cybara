class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2131"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2131/cybara-v1.0.2131-darwin-arm64-cli"; sha256 "242576f8219e3acc834de8db114b667ee4222f0b7584e55b53a1e5bd1bb29bf3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2131/cybara-v1.0.2131-darwin-x64-cli"; sha256 "45c5715729dae5401c5f4558c8a7618576feb46ae2e5019c2141a83eed4b6583" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2131/cybara-v1.0.2131-linux-arm64-cli"; sha256 "7488414e040e9d3b123257364ae58d58cc2f6f735d6e31715776f83f4b803b8e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2131/cybara-v1.0.2131-linux-x64-cli"; sha256 "4fcc19fa25ffcc22f0f4c4cef3ce0c0a5b473b3e287c8e881da97c0d23f41875" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
