class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2022"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2022/cybara-v1.0.2022-darwin-arm64-cli"; sha256 "bb4333ef1fedac1a42f40ee0adefb734cc9989953e4bff69206bb8d413aeadbb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2022/cybara-v1.0.2022-darwin-x64-cli"; sha256 "5ebf68e4f40a355ba52af125d1f3e2fb5257a7c4d4f32f5f42d1312de1d05bec" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2022/cybara-v1.0.2022-linux-arm64-cli"; sha256 "218306c6919c30ed5b41017b002a42df29abd05f3559dc5f705b6d6823043304" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2022/cybara-v1.0.2022-linux-x64-cli"; sha256 "5b1e341d38511f451e4ce4fe7d6f73362a84c89a68a268f54743559a62b50904" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
