class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1910"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1910/cybara-v1.0.1910-darwin-arm64-cli"; sha256 "61cece82e146611d6dc7f22321caf254387d14619685e697c648d7c5e07a4d45" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1910/cybara-v1.0.1910-darwin-x64-cli"; sha256 "b28d32c0f94e4d6b9693aa63dd686cb3ef83150b9428742207415b0a6dc98fc7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1910/cybara-v1.0.1910-linux-arm64-cli"; sha256 "5f3db18e5ff119c35dd0ea43ef0f8836897c8927281c78ce0fbdf0d3247f3012" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1910/cybara-v1.0.1910-linux-x64-cli"; sha256 "afccd2bc1de135ba8064549285fdcc9358876d065b5aedcd50623ef3b70f0221" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
