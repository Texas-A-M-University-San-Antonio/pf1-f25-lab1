#!/bin/bash
# Cleanup script to prepare workspace for GitHub Classroom template

echo "🧹 Cleaning up files for student template..."

# Remove solution files
echo "Removing solution files..."
rm -f InClass3_SOLUTION.java
rm -f Lab3_SOLUTION.java

# Remove setup/development files
echo "Removing development files..."
rm -f create_classroom_package.sh
rm -f GITHUB_CLASSROOM_SETUP.md

# Remove compiled files
echo "Removing target directory..."
rm -rf target/

# Optional: Remove instructor documentation
read -p "Remove instructor documentation files? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Removing instructor docs..."
    rm -f STUDENT_EXPERIENCE.md
    rm -f TESTING_SUMMARY.md
fi

echo "✅ Cleanup complete! Ready to create template repository."
echo "Next steps:"
echo "1. git add ."
echo "2. git commit -m 'Initial student template'"
echo "3. git push origin main"
