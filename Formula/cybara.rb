class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2447"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2447/cybara-v1.0.2447-darwin-arm64-cli"; sha256 "cb20dad926377a0a8470036d1fcb1457c492e5cd6ef0b9752ceba6312c4c57e4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2447/cybara-v1.0.2447-darwin-x64-cli"; sha256 "f894d476d61d883666131ae6e427eff7359ca0140f09ad0f87fcb2301e3f4fc8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2447/cybara-v1.0.2447-linux-arm64-cli"; sha256 "f10541e7264fabda692a082d6ef4fd664153268d4db7a2995202449b3350f72e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2447/cybara-v1.0.2447-linux-x64-cli"; sha256 "0d6c045833121e1bc0daf7db8fee9699462e7612a0e197d90ec4e99555ea4818" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
