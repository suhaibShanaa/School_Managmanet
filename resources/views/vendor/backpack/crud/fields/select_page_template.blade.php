...
<!-- select2 multiple -->
<div class="form-group">
    <label>{{ $field['label'] }}</label>
    <?php
    $field['foreign_pivot_key'] = !empty($field['foreign_pivot_key']) ? $field['foreign_pivot_key'] : 'id';
    ?>
    <select
        class="form-control select2"

    @foreach ($field as $attribute => $value)
        @if (is_string($attribute))
            @if ($attribute=='name')
                {{ $attribute }}="{{ $value }}[]"
            @else
                {{ $attribute }}="{{ $value }}"
            @endif
        @endif
    @endforeach
    multiple>
    <option value="">-</option>

    @if (isset($field['model']))
        @foreach ($field['model']::all() as $connected_entity_entry)
            <option value="{{ $connected_entity_entry->getKey() }}"
                    @if ( (isset($field['value']) && in_array($connected_entity_entry->getKey(), $field['value']->lists($field['foreign_pivot_key'])->toArray())) || ( old( $field["name"] ) && in_array($connected_entity_entry->getKey(), old( $field["name"])) ) )
                    selected
                @endif
            >{{ $connected_entity_entry->{$field['attribute']} }}</option>
            @endforeach
            @endif
            </select>
</div>
