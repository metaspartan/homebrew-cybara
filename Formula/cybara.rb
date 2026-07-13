class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1455"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1455/cybara-v1.0.1455-darwin-arm64-cli"; sha256 "550ee83d7584a69a72d9cdeb11e58f7ec7bb239c0cf79a969b4e9f58b31ba113" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1455/cybara-v1.0.1455-darwin-x64-cli"; sha256 "56c44417aad1cf6a8d4f8ee2c6dbe710df76a634ee2c6eda3c090142e52cad02" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1455/cybara-v1.0.1455-linux-arm64-cli"; sha256 "0922a710c14a589b158a19648e6fb5212e240026d564bcc7880e7f3105d84666" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1455/cybara-v1.0.1455-linux-x64-cli"; sha256 "db015c56b285bf4c44ccf9844771d933d2640cfdc216d6308576c4970a563071" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
