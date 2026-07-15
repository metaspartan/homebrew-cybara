class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1644"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1644/cybara-v1.0.1644-darwin-arm64-cli"; sha256 "41830235e5281ae9bec7c2a42c49d9ec476c41e303f0df612e28e891e93acf98" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1644/cybara-v1.0.1644-darwin-x64-cli"; sha256 "0674f9bae98176c70711bd2c2262b241b4d9ea1705003e5090f36a76df5b3956" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1644/cybara-v1.0.1644-linux-arm64-cli"; sha256 "8048c612330f2c7aa308744401bcebb02820aad9eacbedd863d973bf79d6bd1f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1644/cybara-v1.0.1644-linux-x64-cli"; sha256 "e00efcc3920504470dd3c47045b81247a5840fcaae7c32235610fcc40b07258f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
