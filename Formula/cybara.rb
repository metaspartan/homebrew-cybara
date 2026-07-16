class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1719"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1719/cybara-v1.0.1719-darwin-arm64-cli"; sha256 "4d33d973b4bdc653241c52b3596f5d5e2ee2508d1fd25241bfc3c8b78b9016f3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1719/cybara-v1.0.1719-darwin-x64-cli"; sha256 "c3aa838ef725596f2c8e5721bd491bd100ebf03f3e355cc0dba89cad94b264a5" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1719/cybara-v1.0.1719-linux-arm64-cli"; sha256 "5aecc8fa409925971eae0f0a71a946366a0d33c332699597c66aa6ede428c023" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1719/cybara-v1.0.1719-linux-x64-cli"; sha256 "65848cafc1ea8ea8c2b0604132f3e1d4826a9561273f268db65a0ba39605f16a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
