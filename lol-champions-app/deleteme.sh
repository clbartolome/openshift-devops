# Function to calculate percentage
calculate_percentage() {
    local covered=$1
    local missed=$2
    if [ $((covered + missed)) -eq 0 ]; then
        echo "0.00"
    else
        echo "scale=2; 100 * $covered / ($covered + $missed)" | bc
    fi
}

# Check if the CSV file exists
if [[ ! -f "$CSV_FILE" ]]; then
    echo "CSV file not found at $CSV_FILE"
    exit 1
fi

# Print header
printf "%-50s %-20s\n" "Class" "Line Coverage (%)"
printf "%-70s\n" "==============================================================="

# Read CSV file and process lines
tail -n +2 "$CSV_FILE" | while IFS=',' read -r sessionid type name instruction_missed instruction_covered branch_missed branch_covered complexity_missed complexity_covered line_missed line_covered method_missed method_covered; do
    if [[ "$type" == "CLASS" ]]; then
        instruction_coverage=$(calculate_percentage $instruction_covered $instruction_missed)
        printf "%-50s %-20s\n" "$name" "$instruction_coverage"
    fi
done
