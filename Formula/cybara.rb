class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1630"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1630/cybara-v1.0.1630-darwin-arm64-cli"; sha256 "db5906f770c14eb5cebede9da6a57d0eae66e00abb00e2680b5734facddeebd3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1630/cybara-v1.0.1630-darwin-x64-cli"; sha256 "8d861f5ed2e61eb823e5730a7fa6ece7a0cd8ffdfb8f3f170049517854b65c3b" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1630/cybara-v1.0.1630-linux-arm64-cli"; sha256 "e92baebca53de53c10ce92ec20f7bb5af6b2cffd4102a4fa21d27684d21616cb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1630/cybara-v1.0.1630-linux-x64-cli"; sha256 "df7f4eff0210ba3a23bb54985537cd8be1925c280225b2508a41e1b74070f361" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
