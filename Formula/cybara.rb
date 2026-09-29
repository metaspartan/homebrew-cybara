class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2432"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2432/cybara-v1.0.2432-darwin-arm64-cli"; sha256 "e47280fd5165a72058c53e54c5fb1447bd2b0d17f54967a9799e4d8c9ec71270" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2432/cybara-v1.0.2432-darwin-x64-cli"; sha256 "39d257a077a2051689a17882157e81857822db2807560df9f713f627aa9c1ee3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2432/cybara-v1.0.2432-linux-arm64-cli"; sha256 "433abf9e8ca25523d84f38c91eec355c95d868828973a9761a02bdbfc0a27386" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2432/cybara-v1.0.2432-linux-x64-cli"; sha256 "58e3c62746d9c956faa1b55ab9dc87f948b073e9adfec4e4c556568bbb0316df" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
