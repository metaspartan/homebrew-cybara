class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1425"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1425/cybara-v1.0.1425-darwin-arm64-cli"; sha256 "72fb10202092e16fa65276b371ca834333a368c731be54fa63adabff8c218566" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1425/cybara-v1.0.1425-darwin-x64-cli"; sha256 "56107adeffc590a3f7ebbcd0a2894f3d79dc8dbfec7a938bd43b7102674c5e29" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1425/cybara-v1.0.1425-linux-arm64-cli"; sha256 "ad8c42ff7d66bd2a9a507cdd3ca90358e2880ec2d6593196afd017593b8156f4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1425/cybara-v1.0.1425-linux-x64-cli"; sha256 "36d22a1654f32ba05a53b839bd97202b9d81e137fc6d9561193c4ae4445aefcb" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
