class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2363"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2363/cybara-v1.0.2363-darwin-arm64-cli"; sha256 "b63bcc8843ab94e010e6fccd9fe02553a69bb6629c4c25a0da19e8e0188e9f58" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2363/cybara-v1.0.2363-darwin-x64-cli"; sha256 "6bc54b42b589b9f3019dddb468576d009f3070ab43b45c6e4730d0f99d009b92" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2363/cybara-v1.0.2363-linux-arm64-cli"; sha256 "6d5724b94658735d2833607acb373a1426241bae4b800c5c96c5e0fc314fe53f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2363/cybara-v1.0.2363-linux-x64-cli"; sha256 "895c8a1aba517638af4993287c4bd62c6fddd77f2dc4958b012657ad592a14ee" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
