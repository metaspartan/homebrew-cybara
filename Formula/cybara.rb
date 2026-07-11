class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1235"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1235/cybara-v1.0.1235-darwin-arm64-cli"; sha256 "f45cedd90a56d948ab7b4b10c08e530d66bd1441f4a3de0f2f74fc95d6048690" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1235/cybara-v1.0.1235-darwin-x64-cli"; sha256 "b8f351aefc56f8806c3cd6fbc144a07626cd29a223b9e5bfc20457e8861cbb4b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1235/cybara-v1.0.1235-linux-arm64-cli"; sha256 "eda7509e96af7cb714512557e9c8aaa28423c4e22f7d30f34eca926469270bcf" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1235/cybara-v1.0.1235-linux-x64-cli"; sha256 "e579b6b284d48a1235218020233a1a723c20a9a03536d1925a1162a9a280cc02" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
